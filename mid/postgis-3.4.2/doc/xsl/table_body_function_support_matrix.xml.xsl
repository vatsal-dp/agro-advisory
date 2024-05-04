<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- ********************************************************************
	 ********************************************************************
	 Copyright 2010-2022, Regina Obe
	 License: BSD
   Purpose: This is an xsl transform that generates file table_body_function_support_matrix.xml.xsl which
   includes table body of functions support matrix.
   It uses xml reference sections from reference.xml to then be processed by docbook
	 ******************************************************************** -->
	<xsl:output method="xml" indent="yes" encoding="utf-8" />

	<!-- We deal only with the reference chapter -->
	<xsl:template match="/">
		<xsl:apply-templates select="/book/chapter[@id='reference']" />
	</xsl:template>

	<xsl:template match="//chapter">

      <!-- TODO: use entities or xinclude instead,
           to avoid duplication with postgis_special.xsl.xml
      -->
			<xsl:variable name='matrix_checkmark'><![CDATA[
				<inlinemediaobject>
					<imageobject>
						<imagedata fileref='images/matrix_checkmark.png' />
					</imageobject>
				</inlinemediaobject>
			]]></xsl:variable>
			<xsl:variable name='matrix_transform'><![CDATA[
				<inlinemediaobject>
					<imageobject>
						<imagedata fileref='images/matrix_transform.png' />
					</imageobject>
				</inlinemediaobject>
			]]></xsl:variable>
			<xsl:variable name='matrix_autocast'><![CDATA[
				<inlinemediaobject>
					<imageobject>
						<imagedata fileref='images/matrix_autocast.png' />
					</imageobject>
				</inlinemediaobject>
			]]></xsl:variable>
			<xsl:variable name='matrix_sfcgal_required'><![CDATA[
				<inlinemediaobject>
					<imageobject>
						<imagedata fileref='images/matrix_sfcgal_required.png' />
					</imageobject>
				</inlinemediaobject>
			]]></xsl:variable>
			<xsl:variable name='matrix_sfcgal_enhanced'><![CDATA[
				<inlinemediaobject>
					<imageobject>
						<imagedata fileref='images/matrix_sfcgal_enhanced.png' />
					</imageobject>
				</inlinemediaobject>
			]]></xsl:variable>

						<tbody>
						<!-- Exclude PostGIS types, management functions, long transaction support, or exceptional functions from consideration  -->
						<!-- leaving out operators in an effor to try to fit on one page -->
						<xsl:for-each select="descendant::node()[not(@id='PostGIS_Types' or @id='Management_Functions' or @id='Long_Transactions_Support' or @id='Exceptional_Functions' or @id='Version_Functions')]/refentry">
							<xsl:sort select="@id"/>
							<xsl:variable name='comment'>
								<xsl:value-of select="normalize-space(translate(translate(refnamediv/refpurpose,'&#x0d;&#x0a;', ' '), '&#09;', ' '))"/>
							</xsl:variable>
							<xsl:variable name="refid">
								<xsl:value-of select="@id" />
							</xsl:variable>
							<xsl:variable name="refname">
								<xsl:value-of select="refnamediv/refname" />
							</xsl:variable>

							<row>
								<!-- Display name of function and link to it -->
								<entry><link linkend="{$refid}"><xsl:value-of select="$refname" /></link></entry>
								<!-- If at least one proto function accepts or returns a geometry -->
								<xsl:choose>
									<!-- direct support -->
									<xsl:when test="contains(refsynopsisdiv/funcsynopsis,'geometry') or contains(refsynopsisdiv/funcsynopsis/funcprototype/funcdef,'geometry')">
										<entry>
										<xsl:choose>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_required']">
												<xsl:value-of select="$matrix_sfcgal_required" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_enhanced']">
												<xsl:value-of select="$matrix_sfcgal_enhanced" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
										</entry>
									</xsl:when>
									<!-- support via autocast -->
									<xsl:when test="contains(refsynopsisdiv/funcsynopsis,'box') or contains(refsynopsisdiv/funcsynopsis/funcprototype/funcdef,'box') or contains(refsynopsisdiv/funcsynopsis, 'geom_name')">
										<entry><xsl:value-of select="$matrix_autocast" disable-output-escaping="yes"/></entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>
								<!-- If at least one proto function accepts or returns a geography -->
								<xsl:choose>
									<!-- Support via geometry transform hack -->
									<xsl:when test="refsection/descendant::node()[@conformance='geography_transform']">
										<entry><xsl:value-of select="$matrix_transform" disable-output-escaping="yes"/></entry>
									</xsl:when>
									<!-- direct support -->
									<xsl:when test="contains(refsynopsisdiv/funcsynopsis,'geography') or contains(refsynopsisdiv/funcsynopsis/funcprototype/funcdef,'geography')">
										<entry><xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/></entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>

								<!-- If at least one paragraph contains support 3d -->
								<xsl:choose>
									<!-- supports -->
									<xsl:when test="refsection/descendant::node()[@conformance='3d']">
										<!-- if 3d denote if it needs sfcgal -->
										<entry>
										<xsl:choose>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_required']">
												<xsl:value-of select="$matrix_sfcgal_required" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_enhanced']">
												<xsl:value-of select="$matrix_sfcgal_enhanced" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
										</entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>

								<!-- Support for Curve -->
								<xsl:choose>
									<!-- supports -->
									<xsl:when test="refsection/descendant::node()[@conformance='curve']">
										<entry><xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/></entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>
								<!-- SQL MM compliance -->
								<xsl:choose>
									<!-- supports -->
									<xsl:when test="refsection/descendant::node()[@conformance='sqlmm']">
										<entry>
										<xsl:choose>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_required']">
												<xsl:value-of select="$matrix_sfcgal_required" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_enhanced']">
												<xsl:value-of select="$matrix_sfcgal_enhanced" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
										</entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>
							<!-- Polyhedral surface support -->
								<xsl:choose>
									<!-- supports -->
									<xsl:when test="refsection/descendant::node()[@conformance='polyhedral']">
										<entry>
										<xsl:choose>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_required']">
												<xsl:value-of select="$matrix_sfcgal_required" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_enhanced']">
												<xsl:value-of select="$matrix_sfcgal_enhanced" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
										</entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>
							<!-- Triangle and TIN surface support -->
								<xsl:choose>
									<!-- supports -->
									<xsl:when test="refsection/descendant::node()[@conformance='triangle']">
										<entry>
										<xsl:choose>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_required']">
												<xsl:value-of select="$matrix_sfcgal_required" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:when test="refsection/descendant::node()[@conformance='sfcgal_enhanced']">
												<xsl:value-of select="$matrix_sfcgal_enhanced" disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$matrix_checkmark" disable-output-escaping="yes"/>
											</xsl:otherwise>
										</xsl:choose>
										</entry>
									</xsl:when>
									<!-- no support -->
									<xsl:otherwise>
										<entry></entry>
									</xsl:otherwise>
								</xsl:choose>
							</row>
						</xsl:for-each>
						</tbody>
	</xsl:template>

</xsl:stylesheet>
