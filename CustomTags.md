#### Steps:
* Create taghandler class
* Then create taglib descriptor

TagHandler.java
```
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * TagHandler
 */
public class TagHandler extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out = pageContext.getOut();
            out.print("<h1>Printing from custom tag</h1>");
        } catch (Exception c) {
            c.printStackTrace();
        }
        return SKIP_BODY;
    }
}
```
WEB-INF/tlds/lib.tld
```
         <taglib xmlns="http://java.sun.com/xml/ns/javaee"  
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
http://java.sun.com/xml/ns/j2ee/web-jsptaglibrary_2_1.xsd" version="2.1">
<tlib-version>1.0</tlib-version>
    <jsp-version>2.1</jsp-version>
    <short-name>mylib</short-name>
    <tag>
        <name>CustomTag</name>
        <tag-class>TagHandler</tag-class>
    </tag>
</taglib>
```
