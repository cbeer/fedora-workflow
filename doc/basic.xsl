<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fedora-rels-ext="info:fedora/fedora-system:def/relations-external#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:fedora-model="info:fedora/fedora-system:def/model#" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
             version="1.0">
	<xsl:output method="xml" omit-xml-declaration="yes" />
    <xsl:param name="action">default</xsl:param>
	<xsl:template match="rdf:RDF">
		<process-definition>
			<xsl:apply-templates select="//fedora-rels-ext:hasWorkflow" />
			<xsl:apply-templates select="//fedora-model:hasModel" />
		</process-definition>
	</xsl:template>
	<xsl:template match="//fedora-model:hasModel">
        <xsl:variable name="parent_pid" select="substring-after(@rdf:resource, '/')" />
        <xsl:variable name="rels" select="document(concat('http://localhost:8080/fedora/get/', $parent_pid, '/RELS-EXT'))" />
        <xsl:apply-templates select="$rels" mode="parent"/>
    </xsl:template>
	<xsl:template match="rdf:RDF" mode="parent">
		<xsl:apply-templates select="//fedora-rels-ext:hasWorkflow" />
	</xsl:template>
	<xsl:template match="//fedora-rels-ext:hasWorkflow">
        <xsl:variable name="pid" select="substring-after(@rdf:resource, '/')" />	
        <xsl:variable name="wkflw" select="document(concat('http://localhost:8080/fedora/get/', $pid, '/Workflow'))" />
        <xsl:apply-templates select="$wkflw/workflows/process-definition[@name=$action]"/>  
        <xsl:apply-templates select="$wkflw/workflows/process-definition[@name='any']"/>  
	</xsl:template>
	<xsl:template match="//process-definition">
		<xsl:copy-of select="*" />
	</xsl:template>
</xsl:stylesheet>