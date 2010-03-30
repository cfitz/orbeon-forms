<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      exclude-result-prefixes="xs"
      version="2.0">

    <xsl:param name="query"></xsl:param>

    <xsl:template match="/">
        <parameters>
		<xquery>declare namespace default="info:lc/xmlns/codelist-v1";&lt;toplevel&gt;&lt;suggestions&gt;{for $v in (//default:name[starts-with(text(), '<xsl:value-of select="$query" />')])return&lt;suggestion&gt;{$v}&lt;/suggestion&gt;}&lt;/suggestions&gt;&lt;/toplevel&gt;</xquery>
	</parameters>
	</xsl:template>
</xsl:stylesheet>
