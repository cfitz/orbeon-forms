/**
 *  Copyright (C) 2004 Orbeon, Inc.
 *
 *  This program is free software; you can redistribute it and/or modify it under the terms of the
 *  GNU Lesser General Public License as published by the Free Software Foundation; either version
 *  2.1 of the License, or (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 *  without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *  See the GNU Lesser General Public License for more details.
 *
 *  The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
 */
package org.orbeon.oxf.xml.dom4j;

import org.dom4j.tree.DefaultDocument;

/**
 * @see NonLazyUserDataElement
 */
public class NonLazyUserDataDocument extends DefaultDocument {

    public NonLazyUserDataDocument() {
    }

    public NonLazyUserDataDocument(final NonLazyUserDataElement root) {
        super(root);
    }

    protected org.dom4j.DocumentFactory getDocumentFactory() {
        return NonLazyUserDataDocumentFactory.getInstance();
    }
}
