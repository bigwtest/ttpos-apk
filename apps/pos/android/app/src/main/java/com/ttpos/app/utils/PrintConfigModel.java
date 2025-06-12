package android.app.src.main.java.com.ttpos.app.utils;

import com.alibaba.fastjson.JSONObject;


public class PrintConfigModel  {
    private String IP;
    private int PORT;
    private String SN;

    private String APP_ID;
    private String APP_KEY;

    public String getIP() {
        return IP;
    }

    public void setIP(String IP) {
        this.IP = IP;
    }

    public int getPORT() {
        return PORT;
    }

    public void setPORT(int PORT) {
        this.PORT = PORT;
    }

    public String getSN() {
        return SN;
    }

    public void setSN(String SN) {
        this.SN = SN;
    }

    public void setAPP_ID(String APP_ID) {
        this.APP_ID = APP_ID;
    }
    public String getAPP_ID() {
        return APP_ID;
    }

    public void setAPP_KEY(String APP_KEY) {
        this.APP_KEY = APP_KEY;
    }
    public String getAPP_KEY() {
        return APP_KEY;
    }

    public static PrintConfigModel fromJson(JSONObject json) {
        PrintConfigModel obj = new PrintConfigModel();
        obj.setSN(json.getString("SN"));
        obj.setPORT(json.getIntValue("PORT"));
        obj.setIP(json.getString("IP"));
        obj.setAPP_ID(json.getString("APP_ID"));
        obj.setAPP_KEY(json.getString("APP_KEY"));
        return obj;
    }

    public String toString() {
        return "PrintModel{" +
                "SN=" + SN +
                ", PORT='" + PORT + '\'' +
                ", IP='" + IP + '\'' +
                '}';
    }
}
