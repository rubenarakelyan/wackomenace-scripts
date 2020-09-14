<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xml:base="{BOARD_URL}" xmlns:dc="http://purl.org/dc/elements/1.1/">
<channel>
 <title>{BOARD_TITLE}</title>
 <link>{BOARD_URL}</link>
 <description>{BOARD_DESCRIPTION}</description>
 <language>{BOARD_LANGUAGE}</language>
 <copyright>{BOARD_COPYRIGHT}</copyright>
 <managingEditor>{BOARD_MANAGING_EDITOR}</managingEditor>
 <webMaster>{BOARD_WEBMASTER}</webMaster>
 <docs>http://blogs.law.harvard.edu/tech/rss</docs>
 <ttl>60</ttl>
 <lastBuildDate>{BUILD_DATE}</lastBuildDate>
 <pubDate>{BUILD_DATE}</pubDate>
 <image>
  <url>{BOARD_IMAGE}</url>
  <title>{BOARD_TITLE}</title>
  <link>{BOARD_URL}</link>
 </image>
 <!-- BEGIN post_item -->
 <item>
  <title>{post_item.TOPIC_TITLE}</title>
  <link>{post_item.POST_URL}</link>
  <description>{post_item.POST_TEXT}</description>
  <category>{post_item.FORUM_NAME}</category>
  <comments>{BOARD_URL}{post_item.TOPIC_ID}</comments>
  <dc:creator>{post_item.AUTHOR}</dc:creator>
  <pubDate>{post_item.POST_TIME}</pubDate>
  <guid isPermaLink="true">{post_item.POST_URL}</guid>
 </item>
 <!-- END post_item -->
</channel>
</rss>