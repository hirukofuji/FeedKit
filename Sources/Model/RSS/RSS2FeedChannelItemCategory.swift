//
//  RSS2ChannelItemCategory.swift
//
//  Copyright (c) 2016 Nuno Manuel Dias
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/**
 
 Includes the item in one or more categories.
 
 <category> is an optional sub-element of <item>.
 
 It has one optional attribute, domain, a string that identifies a
 categorization taxonomy.
 
 The value of the element is a forward-slash-separated string that
 identifies a hierarchic location in the indicated taxonomy. Processors
 may establish conventions for the interpretation of categories.
 
 Two examples are provided below:
 
 <category>Grateful Dead</category>
 <category domain="http://www.fool.com/cusips">MSFT</category>
 
 You may include as many category elements as you need to, for different
 domains, and to have an item cross-referenced in different parts of the
 same domain.
 
 */
public class RSS2FeedChannelItemCategory {
    
    /**
        The attributes of the `<item>`'s `<category>` element
    */
    public class Attributes {
        
        /// A string that identifies a categorization taxonomy. It's an optional attribute of `<category>`. e.g. "http://www.fool.com/cusips"
        public var domain: String?
        
    }
    
    // The element's attributes
    public var attributes: Attributes?
    
    /// The actual `<category>` value
    public var value: String?
    
    public init() {}
    
}
