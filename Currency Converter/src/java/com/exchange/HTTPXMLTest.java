package com.exchange;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class HTTPXMLTest
{
   /* public static void main(String[] args) 
    {
        try {
            new HTTPXMLTest().start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }*/
    String currency[];
     void start() throws Exception
    {
        URL url = new URL("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml");
        URLConnection connection = url.openConnection();

        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("Cube");
        for(int i=0; i<descNodes.getLength();i++)
        {
            currency[i] = new String();
            currency[i] = descNodes.item(i).getAttributes().getNamedItem("currency").toString();
  
        }
    }
    

    private Document parseXML(InputStream stream)
    throws Exception
    {
        DocumentBuilderFactory objDocumentBuilderFactory = null;
        DocumentBuilder objDocumentBuilder = null;
        Document doc = null;
        try
        {
            objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();

            doc = objDocumentBuilder.parse(stream);
        }
        catch(Exception ex)
        {
            throw ex;
        }       

        return doc;
    }
}