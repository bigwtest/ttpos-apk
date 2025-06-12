package android.app.src.main.java.com.ttpos.app.utils;

import android.util.Log;
import android.util.Xml;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class NodesXml {
    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }
    private static Exception e;
    public static String getXmlFileName() {
        String str = SystemProperties.get(Values.PLATFORM_SOC_PROP);
        String str2 = SystemProperties.get(Values.PLATFORM_PROP);
        if (str != null && !str.equals("")) {
            return "machine_nodes_" + str + ".xml";
        } else if (str2 == null || str2.equals("")) {
            return "machine_nodes.xml";
        } else {
            return "machine_nodes_" + str2 + ".xml";
        }
    }

    public static String getMachineNodesXmlFileName() {
        String str = "/sdcard/etc/" + getXmlFileName();
        if (isFileExist(str)) {
            return str;
        }
        String str2 = "/system/etc/" + getXmlFileName();
        return isFileExist(str2) ? str2 : "no-xml-file-exist";
    }

    public static String getNodesXmlVersion() {
        return getMachineNodesValue("XmlVersion", "Version");
    }

    public static String getMachineNodesValue(String str, String str2) {
        String machineNodesXmlFileName = getMachineNodesXmlFileName();
        if (machineNodesXmlFileName.equals("no-xml-file-exist")) {
            return Values.STRING_NOT_SUPPORT;
        }
        File file = new File(machineNodesXmlFileName);
        if (!file.exists()) {
            return Values.STRING_NOT_SUPPORT;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(fileInputStream2, null);
                    for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                        if (eventType != 0 && eventType != 1 && eventType == 2 && newPullParser.getName().equals(str)) {
                            String attributeValue = newPullParser.getAttributeValue(null, str2);
                            if (attributeValue != null && !attributeValue.equals("")) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e) {
                                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e);
                                }
                                return attributeValue;
                            }
                            String str3 = Values.STRING_NOT_SUPPORT;
                            try {
                                fileInputStream2.close();
                            } catch (IOException e2) {
                                Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e2);
                            }
                            return str3;
                        }
                    }
                    try {
                        fileInputStream2.close();
                    } catch (IOException e3) {
                        Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e3);
                    }
                    return Values.STRING_NOT_SUPPORT;
                } catch (IOException e4) {

                    e = e4;
                    fileInputStream = fileInputStream2;
                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue IOException. Failed parsing " + machineNodesXmlFileName, e);
                    String str4 = Values.STRING_NOT_SUPPORT;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e5);
                        }
                    }
                    return str4;
                } catch (IndexOutOfBoundsException e6) {

                    e = e6;
                    fileInputStream = fileInputStream2;
                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue IndexOutOfBoundsException. Failed parsing " + machineNodesXmlFileName, e);
                    String str5 = Values.STRING_NOT_SUPPORT;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e7) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e7);
                        }
                    }
                    return str5;
                } catch (NullPointerException e8) {

                    e = e8;
                    fileInputStream = fileInputStream2;
                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue NullPointerException. Failed parsing " + machineNodesXmlFileName, e);
                    String str6 = Values.STRING_NOT_SUPPORT;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e9) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e9);
                        }
                    }
                    return str6;
                } catch (NumberFormatException e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue NumberFormatException. Failed parsing " + machineNodesXmlFileName, e);
                    String str7 = Values.STRING_NOT_SUPPORT;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e11) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e11);
                        }
                    }
                    return str7;
                } catch (XmlPullParserException e12) {
                    e = e12;
                    fileInputStream = fileInputStream2;
                    Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue XmlPullParserException. Failed parsing " + machineNodesXmlFileName, e);
                    String str8 = Values.STRING_NOT_SUPPORT;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e13) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e13);
                        }
                    }
                    return str8;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e14) {
                            Log.e("HCDPOSJAR.NodesXml", "getMachineNodesValue stream close IOException. " + e14);
                        }
                    }
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
            } catch (IndexOutOfBoundsException e16) {
                e = e16;
            } catch (NullPointerException e17) {
                e = e17;
            } catch (NumberFormatException e18) {
                e = e18;
            } catch (XmlPullParserException e19) {
                e = e19;
            }
        } catch (Throwable th2) {
            Throwable th = th2;
        }
        return machineNodesXmlFileName;
    }
}
