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
package org.orbeon.oxf.common;

/**
 * Product version information.
 */
public class Version {

    public static final String RELEASE_NUMBER = "dev-post-3.7.1.201008161744";

    /**
     * Return the product version.
     *
     * @return the product version
     */
    public static String getVersion() {
        return RELEASE_NUMBER;
    }

    public String toString() {
        return RELEASE_NUMBER;
    }
}
