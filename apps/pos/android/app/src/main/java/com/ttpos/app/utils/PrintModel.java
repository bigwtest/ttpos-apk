package android.app.src.main.java.com.ttpos.app.utils;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONField;

public class PrintModel {
    @JSONField(name="id")
    private int id;

    @JSONField(name="data")
    private String data;

    @JSONField(name="reason")
    private String reason;

    @JSONField(name="printer_id")
    private int printer_id;

    @JSONField(name="order_id")
    private int order_id;

    @JSONField(name="create_time")
    private String create_time;

    @JSONField(name="update_time")
    private String update_time;

    @JSONField(name="printer_name")
    private String printer_name;

    @JSONField(name="printer_config")
    private String printer_config;

    @JSONField(name="printer_type")
    private String printer_type;

    @JSONField(name="print_times")
    private int print_times;

    @JSONField(name="no")
    private String no;

    @JSONField(name = "is_cashier_printer")
    private Boolean isCashier;
    @JSONField(name = "copies")
    private int copies;

    private int print_method;

    public PrintModel() {
    }

    public int getId() {
        return id;
    }

    public int getCopies() {
        return copies;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public int getPrinter_id() {
        return printer_id;
    }

    public void setPrinter_id(int printer_id) {
        this.printer_id = printer_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public String getPrinter_name() {
        return printer_name;
    }

    public void setPrinter_name(String printer_name) {
        this.printer_name = printer_name;
    }

    public String getPrinter_config() {
        return printer_config;
    }

    public void setPrinter_config(String printer_config) {
        this.printer_config = printer_config;
    }

    public String getPrinter_type() {
        return printer_type;
    }

    public void setPrinter_type(String printer_type) {
        this.printer_type = printer_type;
    }

    public void setCopies(int copies) { this.copies = copies; }

    public int getPrint_times() {
        return print_times;
    }

    public void setPrint_times(int print_times) {
        this.print_times = print_times;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public void setPrint_method(int print_method) {
        this.print_method = print_method;
    }

    public int getPrint_method() {
        return this.print_method;
    }

    public void setIsCashier(boolean isCashier){this.isCashier = isCashier;}

    public boolean getIsCashier(){return this.isCashier;}

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
//                ", data='" + data + '\'' +
                ", reason='" + reason + '\'' +
                ", printer_id=" + printer_id +
                ", order_id=" + order_id +
                ", create_time='" + create_time + '\'' +
                ", printer_name='" + printer_name + '\'' +
                ", printer_config='" + printer_config + '\'' +
                ", printer_type='" + printer_type + '\'' +
                ", print_times=" + print_times +
                ", no='" + no + '\'' +
                '}';
    }

    public static PrintModel fromJson(JSONObject json) {
        PrintModel obj = new PrintModel();
        obj.setId(json.getIntValue("id"));
        obj.setData(json.getString("data"));
        obj.setReason(json.getString("reason"));
        obj.setPrinter_id(json.getIntValue("printer_id"));
        obj.setOrder_id(json.getIntValue("order_id"));
        obj.setCreate_time(json.getString("create_time"));
        obj.setUpdate_time(json.getString("update_time"));
        obj.setPrinter_name(json.getString("printer_name"));
        obj.setPrinter_config(json.getString("printer_config"));
        obj.setPrinter_type(json.getString("printer_type"));
        obj.setPrint_times(json.getIntValue("print_times"));
        obj.setPrint_method(json.getIntValue("print_method"));
        obj.setNo(json.getString("no"));
        obj.setIsCashier(json.getBoolean("is_cashier_printer"));
        obj.setCopies(json.getIntValue("copies"));
        return obj;
    }

    public JSONObject fromModel() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", this.getId());
        jsonObject.put("data", this.getData());
        jsonObject.put("reason", this.getReason());
        jsonObject.put("printer_id", this.getPrinter_id());
        jsonObject.put("order_id", this.getOrder_id());
        jsonObject.put("create_time", this.getCreate_time());
        jsonObject.put("update_time", this.getUpdate_time());
        jsonObject.put("printer_name", this.getPrinter_name());
//        jsonObject.put("printer_config", this.getPrinter_config());
        jsonObject.put("printer_type", this.getPrinter_type());
        jsonObject.put("print_times", this.getPrint_times());
        jsonObject.put("no", this.getNo());
        jsonObject.put("print_method", this.getPrint_method());
        jsonObject.put("is_cashier_printer",this.getIsCashier());
        jsonObject.put("copies",this.getCopies());
        return jsonObject;
    }

    public JSONObject fromFullModel() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", this.getId());
        jsonObject.put("data", this.getData());
        jsonObject.put("reason", this.getReason());
        jsonObject.put("printer_id", this.getPrinter_id());
        jsonObject.put("order_id", this.getOrder_id());
        jsonObject.put("create_time", this.getCreate_time());
        jsonObject.put("update_time", this.getUpdate_time());
        jsonObject.put("printer_name", this.getPrinter_name());
        jsonObject.put("printer_config", this.getPrinter_config());
        jsonObject.put("printer_type", this.getPrinter_type());
        jsonObject.put("print_times", this.getPrint_times());
        jsonObject.put("no", this.getNo());
        jsonObject.put("print_method", this.getPrint_method());
        jsonObject.put("is_cashier_printer",this.getIsCashier());
        jsonObject.put("copies",this.getCopies());
        return jsonObject;
    }

}

