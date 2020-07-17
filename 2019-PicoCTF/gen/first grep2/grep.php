<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This section of the Linux tutorial teaches the basics of regular expressions and grep on the Linux command line. Examples, tips and practice activities." />
    <meta name="keywords" content="linux tutorial, tutorial, linux, unix, bash, command line, grep, egrep, regular expression, re, regular expressions" />
    <meta name="author" content="Ryan Chadwick">

    <title>Linux Tutorial - 10. Learn Grep and Regular Expressions</title>
    
    	<!-- Bootstrap core CSS -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="../css/bootstrap-theme.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="../css/style.css" rel="stylesheet">
	<link href="./css/style2.css" rel="stylesheet"> 
    
    <link rel='icon' type='image/png' href='/favicons/favicon_linux.png'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body role="document" data-spy='scroll' data-target='#sidebox' data-offset='90'> 
	<header id='ryansheader'>
	<div class='container'>
		<div class='col-sm-12'>
			<a id='ryantitle' href='/' title='A collection of Technology Tutorials'>Ryans Tutorials</a>
			
			<div class='btn-toolbar pull-right'>
				<div class='btn-group mega-dropdown'>
					<button class='btn btn-info btn-sm dropdown-toggle' data-toggle='dropdown' >More Tutorials <span class='caret'></span></button>
					<ul class='dropdown-menu pull-right mega-dropdown-menu row'>
						<li class='col-sm-3'>
							<ul>
								<li class='dropdown-header'>Linux</li>
								<li><a href='/linuxtutorial/'><span><img src='/img/round/tux_48.png' alt='Tux' /><p>Linux Tutorial</p></span></a></li>
								<li><a href='/bash-scripting-tutorial/'><span><img src='/img/round/hammer_48.png' alt='Hammer' /><p>Bash Scripting Tutorial</p></a></li>
							</ul>
						</li>
						<li class='col-sm-3'>
							<ul>
								<li class='dropdown-header'>Web</li>
								<li><a href='/html-tutorial/'><span><img src='/img/round/html_48.png' alt='HTML' /><p>HTML Tutorial</p></span></a></li>
								<li><a href='/css-tutorial/'><span><img src='/img/round/css_48.png' alt='CSS' /><p>CSS Tutorial</p></span></a></li>
							</ul>
						</li>
						<li class='col-sm-3'>
							<ul>
								<li class='dropdown-header'>General</li>
								<li><a href='/binary-tutorial/'><span><img src='/img/round/abacus_48.png' alt='Abacus' /><p>Binary Tutorial</p></span></a></li>
								<li><a href='/regular-expressions-tutorial/'><span><img src='/img/round/search_48.png' alt='Search' /><p>Regular Expressions Tutorial</p></span></a></li>
								<li><a href='/boolean-algebra-tutorial/'><span><img src='/img/round/config_48.png' alt='Switches' /><p>Boolean Algebra Tutorial</p></span></a></li>
								<li><a href='/rubiks-cube-tutorial/'><span><img src='/img/round/cube_48.png' alt='Rubiks Cube' /><p>Solve the Cube</p></span></a></li>
							</ul>
						</li>
						<li class='col-sm-3'>
							<ul>
								<li class='dropdown-header'>&nbsp;</li>
								<li><a href='/problem-solving-skills/'><span><img src='/img/round/map_48.png' alt='Map' /><p>Problem Solving Skills</p></span></a></li>
								<li><a href='/graphic-design-tutorial/'><span><img src='/img/round/brush_48.png' alt='Brush' /><p>Basic Graphic Design</p></span></a></li>
								<li><a href='/programming-challenges/'><span><img src='/img/round/rocket_48.png' alt='Rocket' /><p>Programming Challenges</p></span></a></li>
								<li><a href='/software-design-and-development/'><span><img src='/img/round/browser_48.png' alt='Software' /><p>Software Design and Development</p></span></a></li>
								<li><a href='/microbit-tutorial/'><span><img src='/img/round/microbit_48.png' alt='micro:bit' /><p>micro:bit tutorial</p></span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header> 
	
	<!-- Fixed navbar -->
	<div id='tutorialheader' class="navbar navbar-inverse navbar-static" role="navigation" data-spy='affix' data-offset-top='40'>
		<div class="container">
			<h1>Linux Tutorial - 10. Grep and Regular Expressions</h1>
			
			<div class='btn-toolbar pull-right'>
								<div class='btn-group'>
					<button class='btn btn-info btn-sm dropdown-toggle' data-toggle='dropdown' >Tutorial Sections <span class='caret'></span></button>
					<ul class='dropdown-menu pull-right'>
					<li><a href='./'>Introduction</a></li><li><a href='./commandline.php'>1. The Command Line</a></li><li><a href='./navigation.php'>2. Basic Navigation</a></li><li><a href='./aboutfiles.php'>3. More About Files</a></li><li><a href='./manual.php'>4. Manual Pages</a></li><li><a href='./filemanipulation.php'>5. File Manipulation</a></li><li><a href='./vi.php'>6. VI - Text Editor</a></li><li><a href='./wildcards.php'>7. Wildcards</a></li><li><a href='./permissions.php'>8. Permissions</a></li><li><a href='./filters.php'>9. Filters</a></li><li class='active'><a href='./grep.php'>10. Grep and Regular Expressions</a></li><li><a href='./piping.php'>11. Piping and Redirection</a></li><li><a href='./processes.php'>12. Process Management</a></li><li><a href='./scripting.php'>13. Bash Scripting</a></li><li><a href='./bonus.php'>Bonus Material</a></li>							<li class='divider'></li>
						<li><a href='./cheatsheet.php'>Cheat Sheet</a></li><li><a href='./cheatsheetgrep.php'>Grep Cheat Sheet</a></li><li><a href='./cheatsheetvi.php'>Vi Cheat Sheet</a></li>					</ul>
				</div>
 
			</div>
		</div>
	</div>
	
	<div class='container'>
		<div class='row'>
			<div class='col-md-9'>
				<div class='jumbotron'>
					<h2 id='welcome'>Grep and Regular Expressions!</h2>
					<p>What the $[+*.</p>
				</div>
				
				
				<h2 id='introduction' class='text-success'>Introduction</h2>
				
				<div class='pull-right'>
					<style>
					.ryanstutorials-linux-tutorial-top { width: 300px; height: 250px; }
					@media(min-width: 500px) { .ryanstutorials-linux-tutorial-top { width: 336px; height: 280px; } }
					@media(min-width: 800px) { .ryanstutorials-linux-tutorial-top { width: 336px; height: 280px; } }
					</style>
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- RyansTutorials Linux Tutorial Top -->
					<ins class="adsbygoogle ryanstutorials-linux-tutorial-top"
					style="display:inline-block"
					data-ad-client="ca-pub-9971420945046594"
					data-ad-slot="8703052479"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
				
				<p>In the previous section we looked at a collection of filters that would manipulate data for us.  In this section we will look at another filter which is quite powerful when combined with a concept called regular expressions or re's for short.  Re's can be a little hard to get your head around at first so don't worry if this stuff is a little confusing.  I find the best approach is to go over the material and experiment on the command line a little, then leave it for a day or 3, then come back and have another go.  You will be surprised but it will start to make more sense the second time.  Mastering re's just takes practice and time so don't give up.</p>
				
				
				<h2 id='theory'>So what are they?</h2>
				
				<p>Regular expressions are similar to the wildcards that we looked at in section 7.  They allow us to create a pattern.  They are a bit more powerful however.  Re's are typically used to identify and manipulate specific pieces of data.  eg. we may wish to identify every line which contains an email address or a url in a set of data.</p>  
				
				<p>Re's are used all over the place.  We will be demonstrating them here with grep but many other programs use them (including sed and vi which you learned about in previous sections) and many programming languages make use of them too.</p>
				
				<p>I'll give you an introduction to them here in this section but there is much more they can do.  If you are interested then I highly recommend going through our <a href='/regular-expressions-tutorial/'>regular expression tutorial</a> which goes into more detail.</p>
				
				
				<div class='tip'>
					<p>The characters used in regular expressions are the same as those used in wildcards.  Their behaviour is slightly different however.  A common mistake is to forget this and get their functions mixed up.</p>
				</div>
				
				
				<h2 id='grep'>eGrep</h2>
				
				<p>egrep is a program which will search a given set of data and print every line which contains a given pattern. It is an extension of a program called grep. It's name is odd but based upon a command which did a similar function, in a text editor called ed.  It has many command line options which modify it's behaviour so it's worth checking out it's man page.  ie the -v option tells grep to instead print every line which does not match the pattern.</p>
				
				<p class='commandoutline'>egrep [command line options] &lt;pattern&gt; [path]</p>
				
				<p>In the examples below we will use a similar sample file as in the last section.  It is included below as a reference.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>cat mysampledata.txt</span></li>
						<li>Fred apples 20</li>
						<li>Susy oranges 5</li>
						<li>Mark watermellons 12</li>
						<li>Robert pears 4</li>
						<li>Terry oranges 9</li>
						<li>Lisa peaches 7</li>
						<li>Susy oranges 12</li>
						<li>Mark grapes 39</li>
						<li>Anne mangoes 7</li>
						<li>Greg pineapples 3</li>
						<li>Oliver rockmellons 2</li>
						<li>Betty limes 14</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>Let's say we wished to identify every line which contained the string <b>mellon</b></p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep 'mellon' mysampledata.txt</span></li>
						<li>Mark watermellons 12</li>
						<li>Oliver rockmellons 2</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>The basic behaviour of egrep is that it will print the entire line for every line which contains a string of characters matching the given pattern.  This is important to note,  we are not searching for a word but a string of characters.</p>
				
				<p>Also note that we included the pattern within quotes.  This is not always required but it is safer to get in the habit of always using them.  They are required if your pattern contains characters which have a special meaning on the command line.</p>
				
				<p>Sometimes we want to know not only which lines matched but their line number as well.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep -n 'mellon' mysampledata.txt</span></li>
						<li>3:Mark watermellons 12</li>
						<li>11:Oliver rockmellons 2</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>Or maybe we are not interested in seeing the matched lines but wish to know how many lines did match.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep -c 'mellon' mysampledata.txt</span></li>
						<li>2</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				
				<h2 id='learning'>Learning Regular Expressions</h2>
				
				<p>The best way to learn regular expressions is to give the examples a try yourself, then modify them slightly to test your understanding.  It is common to make mistakes in your patterns while you are learning.  When this happens typically every line will be matched or no lines will be matched or some obscure set.  Don't worry if this happens you haven't done any damage and you can easily go back and have another go.  Remember you may hit the up arrow on your keyboard to get at your recent commands and also modify them so you don't need to retype the whole command each time.</p>
				
				<p>If you're not getting the output you would like then here are some basic strategies.</p>
				
				<ul>
					<li>First off, check for typo's.  If you're like me then you're prone to making them.</li>
					<li>Re read the content here.  Maybe what you thought a particular operator did was slightly different to what it actually does and re reading you will notice a point you may have missed the first time.</li>
					<li>Break your pattern down into individual components and test each of these individually.  This will help you to get a feel for which parts of the pattern is right and which parts you need to adjust.</li>
					<li>Examine your output.  Your current pattern may not have worked the way you want but we can still learn from it.  Looking at what we actually did match and using it to help understand what actually did happen will help us to work out what we should try changing to get closer to what we actually want.</li>
				</ul>
				
				<p><a href='https://www.debuggex.com/'>Debuggex</a> is an on-line tool that allows you to experiment with regular expressions and allows you to visualise their behaviour.  It can be a good way to better understand how they work.</p>
				
				<div class='block-center'>
					<style>
					.ryanstutorials-linux-middle { width: 320px; height: 50px; }
					@media(min-width: 500px) { .ryanstutorials-linux-middle { width: 468px; height: 60px; } }
					@media(min-width: 750px) { .ryanstutorials-linux-middle { width: 728px; height: 90px; } }
					</style>
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- RyansTutorials Linux Middle -->
					<ins class="adsbygoogle ryanstutorials-linux-middle"
					style="display:inline-block"
					data-ad-client="ca-pub-9971420945046594"
					data-ad-slot="4133252078"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
				
				
				<h2 id='reoverview'>Regular Expression Overview</h2>
				
				<p>I will outline the basic building blocks of re's below then follow on with a set of examples to demonstrate their usage.</p>
				
				<ul>
					<li><b>.</b> (dot) - a single character.</li>
					<li><b>?</b> - the preceding character matches 0 or 1 times only.</li>
					<li><b>*</b> - the preceding character matches 0 or more times.</li>
					<li><b>+</b> - the preceding character matches 1 or more times.</li>
					<li><b>{n}</b> - the preceding character matches exactly n times.</li>
					<li><b>{n,m}</b> - the preceding character matches at least n times and not more than m times.</li>
					<li><b>[agd]</b> - the character is one of those included within the square brackets.</li>
					<li><b>[^agd]</b> - the character is not one of those included within the square brackets.</li>
					<li><b>[c-f]</b> - the dash within the square brackets operates as a range. In this case it means either the letters c, d, e or f.</li>
					<li><b>()</b> - allows us to group several characters to behave as one.</li>
					<li><b>|</b> (pipe symbol) - the logical OR operation.</li>
					<li><b>^</b> - matches the beginning of the line.</li>
					<li><b>$</b> - matches the end of the line.</b>
				</ul>
				
				
				<h2 id='examples'>Some Examples</h2>
				
				<p>We'll start with something simple.  Let's say we wish to identify any line with two or more vowels in a row. In the example below the multiplier <b>{2,}</b> applies to the preceding item which is the range.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep '[aeiou]{2,}' mysampledata.txt</span></li>
						<li>Robert pears 4</li>
						<li>Lisa peaches 7</li>
						<li>Anne mangoes 7</li>
						<li>Greg pineapples 3</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>How about any line with a 2 on it which is not the end of the line. In this example the multiplier <b>+</b> applies to the <b>.</b> which is any character.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep '2.+' mysampledata.txt</span></li>
						<li>Fred apples 20</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>The number 2 as the last character on the line.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep '2$' mysampledata.txt</span></li>
						<li>Mark watermellons 12</li>
						<li>Susy oranges 12</li>
						<li>Oliver rockmellons 2</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>And now each line which contains either 'is' or 'go' or 'or'.
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep 'or|is|go' mysampledata.txt</span></li>
						<li>Susy oranges 5</li>
						<li>Terry oranges 9</li>
						<li>Lisa peaches 7</li>
						<li>Susy oranges 12</li>
						<li>Anne mangoes 7</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				<p>Maybe we wish to see orders for everyone who's name begins with A - K.</p>
				
				<div class='terminal'>
					<ol>
						<li><span class='prompt'>egrep '^[A-K]' mysampledata.txt</span></li>
						<li>Fred apples 20</li>
						<li>Anne mangoes 7</li>
						<li>Greg pineapples 3</li>
						<li>Betty limes 14</li>
						<li><span class='prompt'></span></li>
					</ol>
				</div>
				
				
				<h2 id='summary' class='text-info'>Summary</h2>
				
				<div class='stuffwelearnt'>
					<dl>	
						<dt>egrep</dt>
						<dd>View lines of data which match a particular pattern.</dd>
					</dl>
				</div>
				
				<div class='importantconcepts'>
					<dl>
						<dt>Regular Expressions</dt>
						<dd>A powerful way to identify particular pieces of information.</dd>
					</dl>
				</div>
				
				
				<h2 id='activities' class='text-warning'>Activities</h2>
				
				<p>Let's identify some information.</p>
				
				<ul class='activities'>
					<li>First off, you may want to make a file with data similar to our sample file.</li>
					<li>Now play with some of the examples we looked at above.</li>
					<li>Have a look at the man page for egrep and try atleast 2 of the command line options for them.</li>
				</ul>
				
				<div class='block-center'>
					<style>
					.ryanstutorials-linux-bottom { width: 320px; height: 50px; }
					@media(min-width: 500px) { .ryanstutorials-linux-bottom { width: 468px; height: 60px; } }
					@media(min-width: 750px) { .ryanstutorials-linux-bottom { width: 728px; height: 90px; } }
					</style>
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- RyansTutorials Linux Bottom -->
					<ins class="adsbygoogle ryanstutorials-linux-bottom"
					style="display:inline-block"
					data-ad-client="ca-pub-9971420945046594"
					data-ad-slot="8563451676"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
				
				<div id='bottomnavigation'>
					<div class='pull-left'><a href='./filters.php'><span class='glyphicon glyphicon-chevron-left'></span> Filters</a></div>
					<div class='pull-right'><a href='./piping.php'>Piping and Redirection <span class='glyphicon glyphicon-chevron-right'></span></a></div>
				</div>
				
			</div>
			<div class='col-md-3 ' id='sideboxcol'>
				<div class="well sidebar-nav hidden-xs hidden-sm"  id='sidebox' data-spy='affix' data-offset-top='40'>
					<ul class="nav nav-list">
						<li class="nav-header">Section Breakdown</li>
						<li><a href="#introduction">Introduction</a></li>
						<li><a href="#theory">So what are they?</a></li>
						<li><a href="#grep">grep</a></li>
						<li><a href="#learning">Learning Regular Expressions</a></li>
						<li><a href="#reoverview">Regular Expression Overview</a></li>
						<li><a href="#examples">Examples</a></li>
						<li><a href="#summary">Summary</a></li>
						<li><a href="#activities">Activities</a></li>
						<li class="nav-header">Next Section</li>
						<li><a href="./piping.php">Piping and Redirection</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class='container-fluid footer-background margin-top'>
	<div class='row-fluid'>
		<div class='col-md-12'>
			<div class='container'>
				<footer>
					<p>By <a href="https://plus.google.com/105636787773904848687" rel='author'>Ryan Chadwick</a> &copy; 2019 <span style='margin-left:30px;'><a href="https://twitter.com/funcreativity" class="twitter-follow-button" data-show-count="false" >Follow @funcreativity</a></span><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
				</footer>
					
				<div id='footerbar'></div> 

				<div class='row'>
					<div class="col-sm-3 tutorial-outline">
						<a href='/' title='Kindle the flame'>
							<img src='/img/round/fire_64.png' alt='Flame' />
							<h4>Home</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/linuxtutorial/'>
							<img src='/img/round/tux_64.png' alt='Tux' />
							<h4>Linux Tutorial</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/html-tutorial/'>
							<img src='/img/round/html_64.png' alt='HTML' />
							<h4>HTML Tutorial</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/binary-tutorial/'>
							<img src='/img/round/abacus_64.png' alt='Abacus' />
							<h4>Binary Tutorial</h4>
						</a>
					</div>
				</div>
				<div class='row'>
					<div class="col-sm-3">
						<p>Education is the kindling of a flame, <br />not the filling of a vessel.<br />
						<i>- Socrates</i></p>
						
						<p><a href='/contact.php'>Contact</a> | <a href='/disclaimer.php' title='Privacy Policy, Terms of Use and Disclaimer'>Disclaimer</a></p>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/bash-scripting-tutorial/'>
							<img src='/img/round/hammer_64.png' alt='Hammer' />
							<h4>Bash Scripting Tutorial</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/css-tutorial/'>
							<img src='/img/round/css_64.png' alt='CSS' />
							<h4>CSS Tutorial</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/regular-expressions-tutorial/'>
							<img src='/img/round/search_64.png' alt='Search' />
							<h4>Regular Expressions</h4>
						</a>
					</div>
				</div>
				<div class='row'>
					<div class="col-sm-offset-3 col-sm-3 tutorial-outline">
						<a href='/programming-challenges/'>
							<img src='/img/round/rocket_64.png' alt='Rocket' />
							<h4>Programming Challenges</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/problem-solving-skills/'>
							<img src='/img/round/map_64.png' alt='Map' />
							<h4>Problem Solving</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/boolean-algebra-tutorial/'>
							<img src='/img/round/config_64.png' alt='Switches' />
							<h4>Boolean Algebra Tutorial</h4>
						</a>
					</div>
				</div>
				<div class='row'>
					<div class="col-sm-offset-3 col-sm-3 tutorial-outline">
						<a href='/graphic-design-tutorial/'>
							<img src='/img/round/brush_64.png' alt='Paint Brush' />
							<h4>Basic Design Tutorial</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/rubiks-cube-tutorial/'>
							<img src='/img/round/cube_64.png' alt='Rubiks Cube' />
							<h4>Solve the Cube</h4>
						</a>
					</div>
					<div class="col-sm-3 tutorial-outline">
						<a href='/software-design-and-development/'>
							<img src='/img/round/browser_64.png' alt='Software' />
							<h4>Software Design and Development</h4>
						</a>
					</div>
				</div>
				<div class='row'>
					<div class="col-sm-offset-9 col-sm-3 tutorial-outline">
						<a href='/microbit-tutorial/'>
							<img src='/img/round/microbit_64.png' alt='micro:bit' />
							<h4>micro:bit Tutorial</h4>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 

<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-20188827-12', 'ryanstutorials.net');
	ga('send', 'pageview');

</script>

		<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src='../js/base.js'></script> 
</body>

</html> 
 
