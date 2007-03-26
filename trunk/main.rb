#!/usr/local/bin/ruby
require 'cgi'
puts "Content-Type: text/html\n\n"

cgi = CGI.new
if cgi.has_key?('user') && cgi.has_key?('passwd'):
    if cgi['user'] == 'admin' &&  cgi['passwd'] == 'csc4150':
        doc = <<END_OF_STRING
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WebVo</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<script src="MochiKit/Base.js" type="text/javascript"></script>
<script src="MochiKit/Async.js" type="text/javascript"></script>

<script src="MochiKit/Iter.js" type="text/javascript"></script>
<script src="MochiKit/DOM.js" type="text/javascript"></script>
<script src="MochiKit/Signal.js" type="text/javascript"></script>
<script src="MochiKit/DateTime.js" type="text/javascript"></script>
<script src="MochiKit/Logging.js" type="text/javascript"></script>
<script src="scripts/init.js" type="text/javascript"></script>
<script src="scripts/events.js" type="text/javascript"></script>
<script src="scripts/util.js" type="text/javascript"></script>
<script src="scripts/comm.js" type="text/javascript"></script>
<script src="scripts/list_table.js" type="text/javascript"></script>
<script src="scripts/recording_table.js" type="text/javascript"></script>
<script src="scripts/recorded_table.js" type="text/javascript"></script>


<body>
<div class="container">

<div class="titleblock"><h1>WebVo</h1><p>&ldquo;Engaging the culture, changing the world.&rdquo;</p></div>

<div><ul class="navbar">
		 <li id="btnListing"><a href="#" class="nav">TV Listing</a></li>
		 <li id="btnRecording"><a href="#" class="nav">Scheduled</a></li>
		 <li id="btnRecorded"><a href="#" class="nav">Recorded</a></li>
</ul></div>



<div id="content" class="content">
<div id="listingContent">
 <table id="listingContentTop">
 <tr>
	<td id="tdInfo"><h2><span id="boxDate">&nbsp;</span><span id="boxCurrRecord">&nbsp;</span><span id="boxSpace">&nbsp;</span></h2></td>
	<td id="boxLoading" class="invisible">Loading...</td>
	<td id="boxTime">
	 <select id="selDate" class="formDayTime"></select>
	 <select id="selTime" class="formDayTime"></select>
     <input id="btnLoad" class="button" type="submit" value="load" />
	</td>
 </tr>
 </table>

 <div id="listingContentMain">
    <table id="schedule"></table>
	<div id="mnuRecord" class="invisible"></div>
	<div id="mnuAddStatus" class="invisible"></div>
 </div>
 </div>
 
 <div id="recordingContent" class='invisible'>
	<div id="mnuRecording">
		<h2>Shows to be recorded</h2>
		<table id="recording"></table>
		<div class="rjust">
			<input id="btnRemoveRecording" class="button" type="submit" value="Remove Selected"></input>
		</div>
	</div>
 </div>

 <div id="recordedContent" class='invisible'>
 	<div id="mnuRecorded">
 		<h2>Shows that have been recorded</h2>
		<table id="recorded"></table>
		<div class="rjust">
			<input id="btnDeleteRecorded" class="button" type="submit" value="Delete Selected"></input>
		</div>
	</div>
 </div>
</div>

<div id="recordingContent" class='invisible'>
	<div id="mnuRecording">
		<table id="recording"></table>
	</div>
</div>

<div class="footer">
  <div class="right">
    <p>&copy; 2006 Cylon Hackers</p>
    <p>Design by <strong><a href="http://www.oswd.org/user/profile/id/6345">Ad_267</a></strong></p>
    <!--<p><a href="http://validator.w3.org/check/referer">Validate XHTML 1.0 Strict</a></p>-->
  </div>
    <p>Email <a href="mailto:tim.disney@gmail.com">Webmaster</a></p>
    <p>Photo Credit: Dimiter Tzankov, <a href="http://www.sxc.hu/">stock.xchng</a></p>
</div>

</div>
</body>
</html>
END_OF_STRING
    else
        doc = "<html><head><title>Error</title></head><body><p>Error: must enter valid username and password</p></body></html>"
    end
else
    doc = "<html><head><title>Error</title></head><body><p>Error: must enter a useranme and password</p></body</html>"
end
puts doc
