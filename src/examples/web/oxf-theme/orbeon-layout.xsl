<!--
    Copyright (C) 2004 Orbeon, Inc.
  
    This program is free software; you can redistribute it and/or modify it under the terms of the
        GNU Lesser General Public License as published by the Free Software Foundation; either version
    2.1 of the License, or (at your option) any later version.
  
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Lesser General Public License for more details.
  
    The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
-->
<!DOCTYPE document [
    <!ENTITY xlight-color "#D5D5EA">
    <!ENTITY light-color "#9999CC">
    <!ENTITY medium-color "#666699">
    <!ENTITY dark-color "#333366">
]>
<root xsl:version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:context="java:org.orbeon.oxf.pipeline.StaticExternalContext">

body {
    margin: .71em .71em .71em .71em;
    padding: 0em;
    min-width: 800px;
    width: expression(document.body.clientWidth &lt; 800 ? '800px' : '1200px' );
}

body, input, table {
    font-family: Arial, Helvetica, Geneva, sans-serif;
    font-size: 9pt;
    line-height: 13pt;
}

th {
    color: #333333;
}

input[type = "submit"] {
    font-size: 8pt;
}

textarea {
    font-family: Lucida Console, Courrier;
    font-size: 12px;
}

#main {
    border-right: 1px solid &dark-color;;
    border-left: 1px solid &dark-color;;
    border-bottom:1px solid &dark-color;;
}

#main1 {
    margin: 0;
    padding:0;
    background:white url("images/left-column-white.png") top left repeat-y;
}

#main #leftcontent {
    float:left;
    width:230px;
    margin:0; padding:0;
    line-height: 15pt;
}

#main #rightcontent {
    float:right;
    width:190px;
    margin:0; padding:0;
}

<!-- Prevent applying the main maincontent settings twice if two are embedded -->
#main #maincontent #maincontent {
    margin:0px;
    background: white;
}

#main #maincontent {
    margin:0px 0px 0px 235px;
    background: white;
}

#maincontent {
    margin:0px;
    background: white;
}

.cleaner {
    clear:both;
    height:1px;
    font-size:1px;
    border:none;
    margin:0; padding:0;
    background:transparent;
}

#rightcontent p {
    font-size: x-small;
}

#banner {
    background:#fff;
    height:3em;
}

p,h1,pre,table {
    margin-top: .71em;
    margin-bottom: .71em;
}

h1 {
    font-size:14pt;
    padding-top:.71em;
}

#banner h1 {
    font-size:14pt;
    padding:.71em .71em 0em .71em;
    margin:0em;
}

.tabs {
    background-image:  url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/tabbar-blue.png')"/>');
    background-repeat: repeat-x;
    height: 23px;
    text-align: center;
    font-weight: normal;
    font-size: 8pt;
    text-transform: uppercase;
    letter-spacing: .1em;
    font-weight: bold;
    clear: both;
}

.subtabs {
    background-color: &xlight-color;;
    color: &dark-color;;
    font-weight: bolder;
    text-align: left;
    padding: .2em .5em .2em .5em;
    margin-top: 0;
    margin-bottom: 2em;
    margin-left: -.8em;
    margin-right: -0.8em;
    border-bottom: solid 1px &dark-color;;
    font-size: 10pt;
    line-height: 180%;
}

.subtab {
    margin: 0 0 0 0;
    padding: 0em 1em 0em 1em;
    height: 17px;
    position: relative;
    border-right: 1px solid white;
}

.tab {
    color: #000;
    margin: 0 0 0 0;
    padding: 0em 1em 0em 1em;
    height: 17px;
    position: relative;
    top: 3px;
    border-right: 1px solid white;
}

.tab:first-child {
    border-left: 1px solid white;
}

.tab:hover {
    color: #000;
    background-color: &medium-color;;
    text-decoration: none;
}

.tab-selected {
    position: relative;
    top: 3px;
    margin: 0 0 0 0;
    padding: 1px 1em 0em .5em;
    background-image:  url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/tab-shadow-top.png')"/>');
    background-repeat: repeat-x;
    background-color: #FFF;
}

.tab-selected-left {
    position: relative;
    top: 3px;
    margin: 0 0 0 0;
    padding: 1px 0em 0em 0em;
    background-image:  url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/tab-shadow-left.png')"/>');
    background-repeat: no-repeat;
    background-color: #FFF;
}

.left-link {
    color: &medium-color;;
    background-color: #FFF;
    font-weight: bold;
    display: block;
    margin: 0em .71em 0em .71em;
    padding: .42em;
    text-decoration: none;
}

.left-link:hover {
    color: #000;
    background-color: &light-color;;
    text-decoration: none;
}

.left-link-selected {
    color: #000;
    background-color: &light-color;;
    font-weight: bold;
    display: block;
    margin: 0em .71em 0em .71em;
    padding: .42em;
    text-decoration: none;
}

a[href] {
    color: &medium-color;;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

#leftcontent h1 {
    color: #000;
    font-weight: bolder;
    font-size: 14pt;
    text-align: left;
    padding: 0.1em .5em .1em .5em;
    margin-top: 0.5em;
    margin-left: 0.1em;
    margin-right: 0.1em;
    margin-bottom: 0em;
}

#maincontent h1 {
    background-color: &xlight-color;;
    color: &dark-color;;
    font-weight: bolder;
    text-align: left;
    padding: .2em .5em .2em .5em;
    margin-top: 0;
    margin-bottom: 2em;
    margin-left: -.8em;
    margin-right: -.8em;
    border-bottom: solid 1px &dark-color;;
    font-size: 10pt;
    line-height: 180%;
}

#maincontent h2 {
    color: &dark-color;;
    background-color: &xlight-color;;
    font-size: 9pt;
    font-weight: bold;
    padding: .2em .5em .2em .5em;
    margin-left: -0.6em;
    margin-right: .5em;
    margin-top: 2em;
    margin-bottom: 1em;
    border-bottom: solid 1px &dark-color;;
    clear: right;
}

#maincontent h3 {
    color: &dark-color;;
    font-size: 10pt;
    font-weight: bold;
    clear: right;
}

#maincontent h4 {
    color: &dark-color;;
    font-size: 10pt;
    font-weight: bold;
}

#maincontent h5 {
    padding: 0.5em;
}

#maincontent img {
    display: block;
    position: relative;
    left: 10em
    background-color: white;
}

#maincontent b {
    color: &dark-color;;
}

#maincontent hr {
    height: 0px;
    border-top: solid gray 1px;
    border-bottom: 0px;
}

#mainbody {
    margin-left: 1em;
    margin-right: 1em;
}

.box {
     margin-left:3px;
}

.box-header {
    background: url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/box-header.png')"/>' top left no-repeat;
    text-align: center;
    color: white;
    font-size: x-small;
    text-transform: uppercase;
}

.box-middle {
    background: url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/box-middle.png')"/>' top left repeat-y;
    color: #666699;
    padding: 10px;
}

.box-footer {
    background: url('<xsl:value-of select="context:rewriteRenderURL('/oxf-theme/images/box-footer.png')"/>' top left no-repeat;
}

.tree-sections {
    margin-left: 0em;
    padding-left: 1em;
    list-style-type: none;
}

.tree-section {
    padding-top: 1em;
    font-weight: bold;
    color: #333333;
}

.tree-section .tree-section {
    padding-top: 0em;
    padding-left: 1em;
    font-weight: bold;
    font-style: italic;
    color: #555555;
}

.tree-section:first-child {
    padding-top: 0em;
}

.tree-items, .tree-items-selected {
    margin-left: 0em;
    padding-left: 1em;
    list-style-type: none;
    color: black;
    font-weight: normal;
    font-style: normal;
}

.tree-items a {
    color: black;
    font-weight: normal;
}

.tree-items-selected {
    color: &medium-color;;
    font-weight: bold;
}

.tree-items a:hover {
    color: black;
    text-decoration: underline;
}

.tree-items:hover {
    color: &medium-color;;
    text-decoration: none;
}

.minitoc ul {
    list-style: none;
    margin-top: .5em;
    margin-bottom: .5em;
    margin-left: 2em;
    padding-left: 0em;
    border-left: 0em;
}

ul {
    list-style-type: square;
}

.frame { margin: 5px 20px 5px 20px; font-size: 12px; }
.frame .content { margin: 0px; }

.note { border: solid 1px &medium-color;; background-color: &xlight-color;; }
.note .label { background-color: &medium-color;; color: #ffffff; }
.note .content { padding: .5em; }

.notes { border: solid 1px #7099C5; background-color: #f0f0ff; }
.notes .label { background-color: #7099C5; color: #ffffff; }

.warning { border: solid 1px #D00000; background-color: #fff0f0; }
.warning .label { background-color: #D00000; color: #ffffff; }

.fixme { border: solid 1px #C6C600; background-color: #FAF9C3; }
.fixme .label { background-color: #C6C600; color: #ffffff; }

.code { font-family: "Lucida Console", "Courier New", Courier, monospace; font-size: 9pt;
        padding-top: 0.5em; padding-bottom: 0.5em; padding-right: 1em; padding-left: 1em}

.bordered { border-color: &light-color;; border-style: solid; border-width: 1px; line-height: 1.2em; }

.source { font-family: "Lucida Console", "Courier New", Courier, monospace; font-size: 9pt; }

.gridtable {
    font-size: 10pt;
    border-collapse: collapse;
}
.gridtable .caption {
    text-align: left;
}
.gridtable th {
    background-color: &xlight-color;;
    color: &dark-color;;
    text-align: center;
    padding: .3em;
    border:    1px solid &light-color;;
}
.gridtable td {
    background-color: #ffffff;
    color: black;
    padding: .2em;
    border:    1px solid &light-color;;
    margin:    0px;
}

.dashedbox {
    border: 1px dotted black;
    padding: 10px
}

.rd {margin-left: 0px; margin-top: 0px; margin-bottom: 0px}
.id {margin-left: 2em; margin-top: 0px; margin-bottom: 0px}
.x {cursor: pointer; cursor:hand}
.c {}
.t {}

.tinyinput { width: 5em; }
.smallinput { width: 8em; }

<!-- Styles used by xforms-to-xhtml.xsl -->
.xferrtable    { border: 0; margin: 0px; padding: 0px }
.xferrtable td { border: 0; margin: 0px; padding: 0px; color: red }
.xfhelptable   { margin: 0px }

@media print {
    #main { border: none; }
    #leftcontent { display: none }
    #rightcontent { display: none }
    .tabs { display: none }
    .tab { display: none }
    #cleaner { display: none }
    #banner { display: none}
    #xmaincontent { position: relative; top: -2cm; left: -3.5cm; width: 15cm;}
    #main #maincontent { margin: 0; }
}

</root>