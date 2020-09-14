##############################################################
## MOD Title: RSS Content Syndicator
## MOD Author: ruben <ruben@wackomenace.co.uk> (Ruben Arakelyan)
## MOD Description: Post-centric forum syndication using RSS
## MOD Version: 2.1.0
##
## Installation Level: Easy
## Installation Time: 1 Minute
## Files To Edit: n/a
## Included Files: rss.php, rss_body.tpl
##############################################################
## For security purposes, please check http://www.phpbb.com/mods/ for the
## latest version of this MOD. Downloading this MOD from other sites could cause malicious code
## to enter into your phpBB Forum. As such, phpBB will not offer support for MODs not offered
## in our MOD-Database, located at http://www.phpbb.com/mods/.
##############################################################
## Author Notes: As noted in rss.php, this MOD is based on two previous MODs for phpBB.
## This MOD outputs valid RSS 2.0.
##############################################################
## MOD History:
##
##   2003-07-11 - Version 1.9
##      - initial release of this modified iteration of the "RDF Content Syndicator" MOD
##   2003-07-14 - Version 2.0
##	- smilies_url now automatically builds the full url to the smiles directory
##	- language variables used in template to support internationalization
##	- support added for listing only 'start of topic' posts in the feed
##	- added "RE:" to the topic name when the post is a reply
##	- post subject field hides when no subject is specified
##	- moved "Topic Replies" up with the rest of the header information
##   2003-07-17 - Version 2.0.1
##	- set upper post count limit of 50
##	- fixed issue where channel data wasn't showing up (oops)
##	- renamed rdf.php and rdf_body.tpl to rss.php and rss_body.tpl, because, well...
##	  that's what we want.  Using RSS/XML/PHP/HTML complicate things enough.
##	- changed <rdf> tags in rss_body.tpl to <rss> tags
##	- added <docs> <managingEditor> and <webMaster> tags to channel data
##	- adjusted stripping of ampersands so that they show up properly in descriptions
##	  might still have a problem if there's no white space after the ampersand, e.g. "Q&A"
##	- fixed problem where line feeds weren't showing up in post text
##  2003-07-28 - Version 2.0.2
##	- author is now a user profile link
##	- added lastBuildDate tag to channel information
##	- post times now show time zone
##	- did some code clean-up
##	- removed option to leave html tags intact (s=0).  Normal tags break the feed, and I realized that
##	  there's no way I'd be able to make this thing work in every buggy feed reader out there.
##	  your feed reader needs to support RSS 0.92.  if it does, you won't have an issue.
##	  if it doesn't, it's not my fault.
##  2006-09-04 - Version 2.1.0
##      - removed user signature code
##      - cleaned up the code so it's readable
##      - changed the default number of posts from 15 to 10
##      - added an RSS link to the post reply page
##      - made the script RSS 2.0 compatible
##      - added numerous extra RSS tags
##      - changed author name from link to plain text and placed in "dc:creator" tag
##        since "author" tag requires an email address
##
##############################################################
## Before Adding This MOD To Your Forum, You Should Back Up All Files Related To This MOD
##############################################################

#
#-----[ COPY ]------------------------------------------
#
copy rss.php to rss.php
copy rss_body.tpl to templates/subSilver/rss_body.tpl

#
#-----[ SAVE/CLOSE ALL FILES ]------------------------------------------
#
# EoM 
