<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- ********************************************************************
     ********************************************************************
	 Copyright 2011, Regina Obe
   License: BSD-3-Clause
	 Purpose: This is an xsl transform that generates PostgreSQL COMMENT ON FUNCTION ddl
	 statements from postgis xml doc reference
     ******************************************************************** -->

	<xsl:include href="common_utils.xsl" />
	<xsl:include href="common_cheatsheet.xsl" />

  <xsl:variable name="chapter_id" select='"Topology"' />

	<xsl:output method="html" />

<!-- TODO: share this -->
<xsl:template match="/">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title>PostGIS Topology Cheatsheet</title>

<!-- TODO: share a parametrizable stylesheet -->
			<style type="text/css">
table { page-break-inside:avoid; page-break-after:auto }
tr    { page-break-inside:avoid; page-break-after:avoid }
thead { display:table-header-group }
tfoot { display:table-footer-group }
body {
	font-family: Arial, sans-serif;
	font-size: 8.5pt;
}
@media print { a , a:hover, a:focus, a:active{text-decoration: none;color:black} }
@media screen { a , a:hover, a:focus, a:active{text-decoration: underline} }
.comment {font-size:x-small;color:green;font-family:"courier new"}
.notes {font-size:x-small;color:red}
#example_heading {
	border-bottom: 1px solid #000;
	margin: 10px 15px 10px 85px;
	color: #00d
}

#content_functions {
	float: left;
	width:100%;
}

#content_examples {
	float: left;
	width: 100%;
}

.section {
	border: 1px solid #000; float:left;
	margin: 4px;
	<xsl:choose><xsl:when test="$output_purpose = 'false'">width: 100%</xsl:when><xsl:otherwise>width: 100%;</xsl:otherwise></xsl:choose>
}
.section th {
	border: 1px solid #000;
	color: #fff;
	background-color: #b63300;
	font-size: 9.5pt;

}
.section td {
	font-family: Arial, sans-serif;
	font-size: 8.5pt;
	vertical-align: top;
	border: 0;
}

.func {font-weight: 600}
.func {font-weight: 600}
.func_args {font-size: 7.5pt;font-family:courier;}
.func_args ol {margin: 2px}
.func_args ol li {margin: 5px}

.evenrow {
	background-color: #eee;
}

.oddrow {
	background-color: #fff;
}

h1 {
	margin: 0px;
	padding: 0px;
	font-size: 14pt;
}
			</style>
		</head>
		<body><h1 style='text-align:center'>PostGIS <xsl:value-of select="$postgis_version" /> Topology Cheatsheet</h1>
			<span class='notes'>
				<!-- TODO: make text equally distributed horizontally ? -->
				<xsl:value-of select="$cheatsheets_config/para[@role='new_in_release']" />
					<sup>1</sup>
				<xsl:value-of select="$cheatsheets_config/para[@role='enhanced_in_release']" />
					<sup>2</sup> &nbsp;
<!--
				<xsl:value-of select="$cheatsheets_config/para[@role='aggregate']" />
					<sup>agg</sup> &nbsp;&nbsp;
				<xsl:value-of select="$cheatsheets_config/para[@role='window_function']" />
					<sup>W</sup> &nbsp;
-->
				<xsl:value-of select="$cheatsheets_config/para[@role='requires_geos_3.9_or_higher']" />
					<sup>g3.9</sup> &nbsp;
<!--
				<xsl:value-of select="$cheatsheets_config/para[@role='z_support']" />
					<sup>3d</sup> &nbsp;
				SQL-MM<sup>mm</sup> &nbsp;
				<xsl:value-of select="$cheatsheets_config/para[@role='geography_support']" />
					<sup>G</sup>
-->
			</span>
			<div id="content_functions">
				<xsl:apply-templates select="/book/chapter[@id=$chapter_id]" />
			</div>
		</body>
	</html>
</xsl:template>


</xsl:stylesheet>
