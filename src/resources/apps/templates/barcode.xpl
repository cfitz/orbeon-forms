<!--
    Copyright (C) 2008 Orbeon, Inc.

    This program is free software; you can redistribute it and/or modify it under the terms of the
    GNU Lesser General Public License as published by the Free Software Foundation; either version
    2.1 of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Lesser General Public License for more details.

    The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
-->
<p:config xmlns:p="http://www.orbeon.com/oxf/pipeline"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xmlns:oxf="http://www.orbeon.com/oxf/processors"
           xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <p:param name="data" type="output"/>
        <p:param type="input" name="instance"/>

    <p:processor name="oxf:barcode">
       <p:input name="data" href="#instance#xpointer(/query/input)" debug="barcode">
        </p:input>
        <p:input name="barcode">
            <barcode message="/input">
                <code128>
                                        <height>8mm</height>
                                    <wide-factor>1</wide-factor>
        <human-readable>
<placement>bottom</placement>
      <font-name>Helvetica</font-name>
      <font-size>10pt</font-size>
      <display-start-stop>true</display-start-stop>
      <display-checksum>true</display-checksum>
    </human-readable>
</code128>
            </barcode>
        </p:input>
        <p:output name="data" ref="data"/>
    </p:processor>

</p:config>